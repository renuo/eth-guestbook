pragma solidity ^0.4.0;

contract RenuoGuestbook {
    event PostEvent(address indexed sender, string author, string body);

    struct Post {
        address sender;
        string author;
        string body;
    }
    Post[] posts;

    function RenuoGuestbook() public {}

    function createPost(string author, string text) public {
        PostEvent(msg.sender, author, text);
        posts.push(Post({
            sender: msg.sender,
            author: author,
            body: text
        }));
    }
    function postsCount() public constant returns (uint result)
    {
        result = posts.length;
    }

    function lastAuthor() public constant returns (string result)
    {
        result = posts[posts.length - 1].author;
    }

    function lastPost() public constant returns (string result)
    {
        result = posts[posts.length - 1].body;
    }
}
